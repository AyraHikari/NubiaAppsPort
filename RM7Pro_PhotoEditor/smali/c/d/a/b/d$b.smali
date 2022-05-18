.class Lc/d/a/b/d$b;
.super Lc/d/a/b/o/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/o/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/b/d$a;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p3, p0, Lc/d/a/b/d$b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/d$b;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
