.class public Lb/a/b/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/b/b/a/d;


# instance fields
.field private a:Z

.field private b:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lb/a/b/b/a/a;->b:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/a/b/b/a/a;->a:Z

    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    iget-boolean p2, p0, Lb/a/b/b/a/a;->a:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lb/a/b/b/a/a;->b:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_1
    const-string p2, "AllCapsTransformationMethod"

    const-string v0, "Caller did not enable length changes; not transforming text"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
