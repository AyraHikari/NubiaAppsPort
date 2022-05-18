.class Lcn/nubia/collage/n/a$c;
.super Lcn/nubia/collage/n/a$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/n/a;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/n/a;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/a$c;->a:Lcn/nubia/collage/n/a;

    invoke-direct {p0}, Lcn/nubia/collage/n/a$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/n/a;Lcn/nubia/collage/n/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/n/a$c;-><init>(Lcn/nubia/collage/n/a;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcn/nubia/collage/n/a$c;->a:Lcn/nubia/collage/n/a;

    invoke-static {p2, p1, p3}, Lcn/nubia/collage/n/a;->d(Lcn/nubia/collage/n/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
