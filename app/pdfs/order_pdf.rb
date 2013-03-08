class OrderPdf < Prawn::Document
	def initialize(order, view)
		super(top_margin: 70)
		@order = order
		@view = view
		header
		order_info
		customer_measurements
		suits
		shirts
		pants
		others
	end

  def shirts
    move_down 20
    text "Shirts", align: :center, size: 12
    table shirt_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def shirt_rows
    [["Name", "Price", "Qty", "Collar", "Cuffs", "Placket", "fit", "Cont-Color", "contrastarea", "monogram"]] +
    @order.shirts.map do |shirt|
      [shirt.shirt_name,shirt.price, shirt.quantity, shirt.collar,shirt.cuffs, shirt.placket, shirt.fit, shirt.contrast_color, shirt.contrast_area, shirt.monongram]
    end
  end

  	def suits
    move_down 20
    text "Suits", align: :center, size: 12
    table suit_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def suit_rows
    [["Name", "Price", "Qty", "Lapel", "Vents", "Buttons", "Cont-Color", "contrastarea", "adv.", "pleats","cuffs"]] +
    @order.suits.map do |suit|
      [suit.suit_name, suit.price, suit.quantity, suit.lapel, suit.vent, suit.button, suit.contrast_color, suit.contrast_area, suit.advanced, suit.pleats, suit.cuffs]
    end
  end

 def pants
    move_down 20
    text "Pants", align: :center, size: 12
    table pant_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def pant_rows
    [["Name", "Price", "Qty", "Pleats", "Cuffs"]] +
    @order.pants.map do |pant|
      [pant.pant_name, pant.price, pant.quantity, pant.pleats, pant.cuffs]
  	end
  end

def others
    move_down 20
    text "Other", align: :center, size: 12
    table other_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def other_rows
    [["Name", "Price", "Qty", "Description"]] +
    @order.others.map do |other|
      [other.other_name, other.price, other.quantity, other.description]
  	end
  end

	def header
		text "Arden Reed", size: 25, style: :italic, align: :center
	end
	def order_info
		move_down 20
		text "Order: \##{@order.order_number}", size: 30, style: :bold
		text "Name: #{@order.customer.name}", size: 10
		text "Address: #{@order.customer.address}", size: 10
		text "Phone: #{@order.customer.phonenumber}", size: 10
		text "Order_Date: #{@order.order_date}", size: 10
		text "Assigned Factory: #{@order.assigned_factory}", size: 10
	end

	def customer_measurements
		move_down 40
		if @order.customer.meas_final.neck.present?
            text "Final Measurements", size: 15, style: :bold
            text "Neck: #{@order.customer.meas_final.neck}", size: 10
            text "Chest: #{@order.customer.meas_final.chest}", size: 10
            text "Waist: #{@order.customer.meas_final.waist}", size: 10
            text "Jacket Length: #{@order.customer.meas_final.jacket_length}", size: 10
            text "Shoulder Width: #{@order.customer.meas_final.shoulder_width}", size: 10
            text "Sleeve Length: #{@order.customer.meas_final.sleeve_length}", size: 10
            text "Sleeve Width: #{@order.customer.meas_final.sleeve_width}", size: 10
            text "Wrist: #{@order.customer.meas_final.wrist}", size: 10
            text "Hip: #{@order.customer.meas_final.hip}", size: 10
            text "Pants Length: #{@order.customer.meas_final.pants_length}", size: 10
            text "Belt: #{@order.customer.meas_final.belt}", size: 10
            text "Thigh: #{@order.customer.meas_final.thigh}", size: 10
            text "Knee: #{@order.customer.meas_final.knee}", size: 10
            text "Crotch: #{@order.customer.meas_final.crotch}", size: 10
        else
            text "Initial Measurements", size: 15, style: :bold
            text "Neck: #{@order.customer.meas_initial.neck_i}", size: 10
            text "Chest: #{@order.customer.meas_initial.chest_i}", size: 10
            text "Waist: #{@order.customer.meas_initial.waist_i}", size: 10
            text "Jacket Length: #{@order.customer.meas_initial.jacket_length_i}", size: 10
            text "Shoulder Width: #{@order.customer.meas_initial.shoulder_width_i}", size: 10
            text "Sleeve Length: #{@order.customer.meas_initial.sleeve_length_i}", size: 10
            text "Sleeve Width: #{@order.customer.meas_initial.sleeve_width_i}", size: 10
            text "Wrist: #{@order.customer.meas_initial.wrist_i}", size: 10
            text "Hip: #{@order.customer.meas_initial.hip_i}", size: 10
            text "Pants Length: #{@order.customer.meas_initial.pants_length_i}", size: 10
            text "Belt: #{@order.customer.meas_initial.belt_i}", size: 10
            text "Thigh: #{@order.customer.meas_initial.thigh_i}", size: 10
            text "Knee: #{@order.customer.meas_initial.knee_i}", size: 10
            text "Crotch: #{@order.customer.meas_initial.crotch_i}", size: 10
            end
	end

end