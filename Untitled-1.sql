-- ============================================
-- 天天生鲜 初始演示数据
-- 请先执行 python manage.py migrate 后再导入此SQL
-- 字符集: utf8mb4
-- ============================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ============================================
-- 1. 商品分类 df_goods_type
-- ============================================
INSERT INTO df_goods_type (id, name, logo, image, create_time, update_time, is_deleted) VALUES
(1, '新鲜水果', 'fruit', 'type/fruit.jpg', NOW(), NOW(), 0),
(2, '海鲜水产', 'seafood', 'type/seafood.jpg', NOW(), NOW(), 0),
(3, '猪牛羊肉', 'meet', 'type/meet.jpg', NOW(), NOW(), 0),
(4, '禽类蛋品', 'egg', 'type/egg.jpg', NOW(), NOW(), 0),
(5, '新鲜蔬菜', 'vegetables', 'type/vegetables.jpg', NOW(), NOW(), 0),
(6, '速冻食品', 'ice', 'type/ice.jpg', NOW(), NOW(), 0);

-- ============================================
-- 2. 商品SPU df_goods
-- ============================================
INSERT INTO df_goods (id, name, detail, create_time, update_time, is_deleted) VALUES
(1, '草莓', '新鲜草莓，果肉饱满，香甜多汁', NOW(), NOW(), 0),
(2, '葡萄', '新疆马奶葡萄，无籽超甜', NOW(), NOW(), 0),
(3, '柠檬', '四川安岳黄柠檬，酸爽可口', NOW(), NOW(), 0),
(4, '火龙果', '越南红心火龙果，甜度高', NOW(), NOW(), 0),
(5, '扇贝', '大连新鲜扇贝，肉肥味美', NOW(), NOW(), 0),
(6, '三文鱼', '挪威进口冰鲜三文鱼', NOW(), NOW(), 0),
(7, '大虾', '青岛海捕大虾，鲜活冷冻', NOW(), NOW(), 0),
(8, '基围虾', '鲜活基围虾，肉质弹牙', NOW(), NOW(), 0),
(9, '猪排骨', '农家土猪精排，新鲜直送', NOW(), NOW(), 0),
(10, '牛腩', '澳洲进口牛腩肉，筋肉交错', NOW(), NOW(), 0),
(11, '羊排', '内蒙古羔羊排，肉质鲜嫩', NOW(), NOW(), 0),
(12, '猪蹄', '农家土猪蹄，富含胶原蛋白', NOW(), NOW(), 0),
(13, '鸡蛋', '农家散养土鸡蛋，30枚装', NOW(), NOW(), 0),
(14, '鸭蛋', '微山湖咸鸭蛋，流油起沙', NOW(), NOW(), 0),
(15, '鸡腿', '新鲜大鸡腿，肉质紧实', NOW(), NOW(), 0),
(16, '整鸡', '三黄鸡，整只约1.5kg', NOW(), NOW(), 0),
(17, '西红柿', '普罗旺斯西红柿，沙瓤多汁', NOW(), NOW(), 0),
(18, '黄瓜', '本地新鲜黄瓜，清脆爽口', NOW(), NOW(), 0),
(19, '青菜', '有机小青菜，当天采摘', NOW(), NOW(), 0),
(20, '土豆', '黄心土豆，粉糯香甜', NOW(), NOW(), 0),
(21, '速冻饺子', '湾仔码头速冻水饺，多种口味', NOW(), NOW(), 0);

-- ============================================
-- 3. 商品SKU df_goods_sku
-- ============================================
INSERT INTO df_goods_sku (id, type_id, goods_id, name, desc, price, unite, image, stock, sales, status, create_time, update_time, is_deleted) VALUES
(1, 1, 1, '草莓', '新鲜草莓 500g/份', 30.00, '500g', 'goods/goods001.jpg', 100, 25, 1, NOW(), NOW(), 0),
(2, 1, 2, '葡萄', '新疆马奶葡萄 500g/份', 25.00, '500g', 'goods/goods002.jpg', 80, 40, 1, NOW(), NOW(), 0),
(3, 1, 3, '柠檬', '四川安岳黄柠檬 500g/份', 15.00, '500g', 'goods/goods003.jpg', 200, 18, 1, NOW(), NOW(), 0),
(4, 1, 4, '火龙果', '越南红心火龙果 500g/份', 20.00, '500g', 'goods/goods004.jpg', 150, 52, 1, NOW(), NOW(), 0),
(5, 2, 5, '扇贝', '大连新鲜扇贝 500g/份', 38.00, '500g', 'goods/goods005.jpg', 60, 12, 1, NOW(), NOW(), 0),
(6, 2, 6, '三文鱼', '挪威三文鱼 500g/份', 60.00, '500g', 'goods/goods006.jpg', 50, 30, 1, NOW(), NOW(), 0),
(7, 2, 7, '大虾', '青岛海捕大虾 500g/份', 45.00, '500g', 'goods/goods007.jpg', 80, 22, 1, NOW(), NOW(), 0),
(8, 2, 8, '基围虾', '鲜活基围虾 500g/份', 55.00, '500g', 'goods/goods008.jpg', 70, 15, 1, NOW(), NOW(), 0),
(9, 3, 9, '猪排骨', '农家土猪精排 500g/份', 32.00, '500g', 'goods/goods009.jpg', 90, 38, 1, NOW(), NOW(), 0),
(10, 3, 10, '牛腩', '澳洲进口牛腩 500g/份', 48.00, '500g', 'goods/goods010.jpg', 60, 20, 1, NOW(), NOW(), 0),
(11, 3, 11, '羊排', '内蒙古羔羊排 500g/份', 55.00, '500g', 'goods/goods011.jpg', 40, 8, 1, NOW(), NOW(), 0),
(12, 3, 12, '猪蹄', '农家土猪蹄 500g/份', 28.00, '500g', 'goods/goods012.jpg', 70, 16, 1, NOW(), NOW(), 0),
(13, 4, 13, '鸡蛋', '农家散养土鸡蛋 30枚', 25.00, '30枚', 'goods/goods013.jpg', 200, 80, 1, NOW(), NOW(), 0),
(14, 4, 14, '鸭蛋', '微山湖咸鸭蛋 20枚', 30.00, '20枚', 'goods/goods014.jpg', 100, 45, 1, NOW(), NOW(), 0),
(15, 4, 15, '鸡腿', '新鲜大鸡腿 500g/份', 18.00, '500g', 'goods/goods015.jpg', 120, 35, 1, NOW(), NOW(), 0),
(16, 4, 16, '整鸡', '三黄鸡整只约1.5kg', 35.00, '只', 'goods/goods016.jpg', 50, 10, 1, NOW(), NOW(), 0),
(17, 5, 17, '西红柿', '普罗旺斯西红柿 500g/份', 8.00, '500g', 'goods/goods017.jpg', 300, 120, 1, NOW(), NOW(), 0),
(18, 5, 18, '黄瓜', '本地新鲜黄瓜 500g/份', 6.00, '500g', 'goods/goods018.jpg', 250, 90, 1, NOW(), NOW(), 0),
(19, 5, 19, '青菜', '有机小青菜 500g/份', 5.00, '500g', 'goods/goods019.jpg', 200, 60, 1, NOW(), NOW(), 0),
(20, 5, 20, '土豆', '黄心土豆 500g/份', 4.00, '500g', 'goods/goods020.jpg', 400, 200, 1, NOW(), NOW(), 0),
(21, 6, 21, '速冻饺子', '湾仔码头速冻水饺 720g', 20.00, '袋', 'goods/goods021.jpg', 100, 50, 1, NOW(), NOW(), 0);

-- ============================================
-- 4. 商品图片 df_goods_image
-- ============================================
INSERT INTO df_goods_image (id, sku_id, image, create_time, update_time, is_deleted) VALUES
(1, 1, 'goods/goods001.jpg', NOW(), NOW(), 0),
(2, 2, 'goods/goods002.jpg', NOW(), NOW(), 0),
(3, 3, 'goods/goods003.jpg', NOW(), NOW(), 0),
(4, 4, 'goods/goods004.jpg', NOW(), NOW(), 0),
(5, 5, 'goods/goods005.jpg', NOW(), NOW(), 0),
(6, 6, 'goods/goods006.jpg', NOW(), NOW(), 0),
(7, 7, 'goods/goods007.jpg', NOW(), NOW(), 0),
(8, 8, 'goods/goods008.jpg', NOW(), NOW(), 0),
(9, 9, 'goods/goods009.jpg', NOW(), NOW(), 0),
(10, 10, 'goods/goods010.jpg', NOW(), NOW(), 0),
(11, 11, 'goods/goods011.jpg', NOW(), NOW(), 0),
(12, 12, 'goods/goods012.jpg', NOW(), NOW(), 0),
(13, 13, 'goods/goods013.jpg', NOW(), NOW(), 0),
(14, 14, 'goods/goods014.jpg', NOW(), NOW(), 0),
(15, 15, 'goods/goods015.jpg', NOW(), NOW(), 0),
(16, 16, 'goods/goods016.jpg', NOW(), NOW(), 0),
(17, 17, 'goods/goods017.jpg', NOW(), NOW(), 0),
(18, 18, 'goods/goods018.jpg', NOW(), NOW(), 0),
(19, 19, 'goods/goods019.jpg', NOW(), NOW(), 0),
(20, 20, 'goods/goods020.jpg', NOW(), NOW(), 0),
(21, 21, 'goods/goods021.jpg', NOW(), NOW(), 0);

-- ============================================
-- 5. 首页轮播商品 df_index_banner
-- ============================================
INSERT INTO df_index_banner (id, sku_id, image, index, create_time, update_time, is_deleted) VALUES
(1, 1, 'banner/slide.jpg', 0, NOW(), NOW(), 0),
(2, 6, 'banner/slide02.jpg', 1, NOW(), NOW(), 0),
(3, 10, 'banner/slide03.jpg', 2, NOW(), NOW(), 0),
(4, 13, 'banner/slide04.jpg', 3, NOW(), NOW(), 0);

-- ============================================
-- 6. 首页促销活动 df_index_promotion
-- ============================================
INSERT INTO df_index_promotion (id, name, url, image, index, create_time, update_time, is_deleted) VALUES
(1, '夏日水果节', '#', 'banner/adv01.jpg', 0, NOW(), NOW(), 0),
(2, '生鲜特惠', '#', 'banner/adv02.jpg', 1, NOW(), NOW(), 0);

-- ============================================
-- 7. 首页分类商品展示 df_index_type_goods
-- display_type: 0=标题展示, 1=图片展示
-- ============================================
INSERT INTO df_index_type_goods (id, type_id, sku_id, display_type, index, create_time, update_time, is_deleted) VALUES
-- 新鲜水果(type=1): 标题展示
(1, 1, 1, 0, 0, NOW(), NOW(), 0),
(2, 1, 2, 0, 1, NOW(), NOW(), 0),
(3, 1, 3, 0, 2, NOW(), NOW(), 0),
-- 新鲜水果(type=1): 图片展示
(4, 1, 4, 1, 0, NOW(), NOW(), 0),
(5, 1, 1, 1, 1, NOW(), NOW(), 0),
(6, 1, 2, 1, 2, NOW(), NOW(), 0),
(7, 1, 3, 1, 3, NOW(), NOW(), 0),
-- 海鲜水产(type=2): 标题展示
(8, 2, 6, 0, 0, NOW(), NOW(), 0),
(9, 2, 7, 0, 1, NOW(), NOW(), 0),
(10, 2, 8, 0, 2, NOW(), NOW(), 0),
-- 海鲜水产(type=2): 图片展示
(11, 2, 5, 1, 0, NOW(), NOW(), 0),
(12, 2, 6, 1, 1, NOW(), NOW(), 0),
(13, 2, 7, 1, 2, NOW(), NOW(), 0),
(14, 2, 8, 1, 3, NOW(), NOW(), 0),
-- 猪牛羊肉(type=3): 标题展示
(15, 3, 10, 0, 0, NOW(), NOW(), 0),
(16, 3, 9, 0, 1, NOW(), NOW(), 0),
(17, 3, 11, 0, 2, NOW(), NOW(), 0),
-- 猪牛羊肉(type=3): 图片展示
(18, 3, 9, 1, 0, NOW(), NOW(), 0),
(19, 3, 10, 1, 1, NOW(), NOW(), 0),
(20, 3, 11, 1, 2, NOW(), NOW(), 0),
(21, 3, 12, 1, 3, NOW(), NOW(), 0),
-- 禽类蛋品(type=4): 标题展示
(22, 4, 13, 0, 0, NOW(), NOW(), 0),
(23, 4, 15, 0, 1, NOW(), NOW(), 0),
(24, 4, 16, 0, 2, NOW(), NOW(), 0),
-- 禽类蛋品(type=4): 图片展示
(25, 4, 13, 1, 0, NOW(), NOW(), 0),
(26, 4, 14, 1, 1, NOW(), NOW(), 0),
(27, 4, 15, 1, 2, NOW(), NOW(), 0),
(28, 4, 16, 1, 3, NOW(), NOW(), 0),
-- 新鲜蔬菜(type=5): 标题展示
(29, 5, 17, 0, 0, NOW(), NOW(), 0),
(30, 5, 18, 0, 1, NOW(), NOW(), 0),
(31, 5, 19, 0, 2, NOW(), NOW(), 0),
-- 新鲜蔬菜(type=5): 图片展示
(32, 5, 17, 1, 0, NOW(), NOW(), 0),
(33, 5, 18, 1, 1, NOW(), NOW(), 0),
(34, 5, 19, 1, 2, NOW(), NOW(), 0),
(35, 5, 20, 1, 3, NOW(), NOW(), 0),
-- 速冻食品(type=6): 标题展示
(36, 6, 21, 0, 0, NOW(), NOW(), 0),
-- 速冻食品(type=6): 图片展示
(37, 6, 21, 1, 0, NOW(), NOW(), 0);

SET FOREIGN_KEY_CHECKS = 1;