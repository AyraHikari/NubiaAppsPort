.class public Lcn/nubia/collage/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Lcn/nubia/collage/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/collage/a;->a:I

    new-instance v0, Lcn/nubia/collage/b;

    const-string v1, "config.properties"

    invoke-direct {v0, p1, v1}, Lcn/nubia/collage/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/collage/a;->b:Lcn/nubia/collage/b;

    const-string p1, "ImageQuality"

    invoke-virtual {v0, p1}, Lcn/nubia/collage/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/a;->a:I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/a;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/a;->a:I

    return p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/a;->a:I

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/a;->b:Lcn/nubia/collage/b;

    new-instance v1, Lcn/nubia/collage/a$a;

    invoke-direct {v1, p0}, Lcn/nubia/collage/a$a;-><init>(Lcn/nubia/collage/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/collage/b;->b(Ljava/util/Map;)V

    return-void
.end method

.method public d(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcn/nubia/collage/a;->a:I

    :cond_1
    :goto_0
    return-void
.end method
