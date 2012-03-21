module ProductsHelper
  def product_image(product, img_class)
    if (product.cover_image_uid)
      link_to(image_tag(product.cover_image.thumb('100x100').url, :class => img_class), product.cover_image.url, :target => '_blank')
    end
  end
end
