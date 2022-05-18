.class public Lcn/nubia/collage/o/a/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Landroid/content/res/AssetManager;

.field private static volatile c:Lcn/nubia/collage/o/a/k;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcn/nubia/collage/o/a/k;->b:Landroid/content/res/AssetManager;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/o/a/k;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcn/nubia/collage/o/a/k;
    .locals 3

    sget-object v0, Lcn/nubia/collage/o/a/k;->c:Lcn/nubia/collage/o/a/k;

    if-nez v0, :cond_1

    const-class v0, Lcn/nubia/collage/o/a/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/collage/o/a/k;->c:Lcn/nubia/collage/o/a/k;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/collage/o/a/k;

    sget-object v2, Lcn/nubia/collage/o/a/k;->b:Landroid/content/res/AssetManager;

    invoke-direct {v1, v2}, Lcn/nubia/collage/o/a/k;-><init>(Landroid/content/res/AssetManager;)V

    sput-object v1, Lcn/nubia/collage/o/a/k;->c:Lcn/nubia/collage/o/a/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/collage/o/a/k;->c:Lcn/nubia/collage/o/a/k;

    return-object v0
.end method

.method public static d(Landroid/content/res/AssetManager;)V
    .locals 2

    const-string v0, "font"

    const-string v1, "textfont init"

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcn/nubia/collage/o/a/k;->b:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/collage/o/a/k;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcn/nubia/collage/o/a/k;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcn/nubia/collage/o/a/k;->a:Ljava/util/Map;

    sput-object v0, Lcn/nubia/collage/o/a/k;->c:Lcn/nubia/collage/o/a/k;

    return-void
.end method

.method public c(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    const-string p2, "system"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcn/nubia/collage/o/a/k;->a:Ljava/util/Map;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Typeface;

    if-nez p2, :cond_1

    sget-object v1, Lcn/nubia/collage/o/a/k;->b:Landroid/content/res/AssetManager;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fonts/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcn/nubia/collage/o/a/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextFont:font not exists :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhotoEditor"

    invoke-static {p2, p1}, Lcom/android/gallery3d/filtershow/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    :goto_1
    return-object v0
.end method
