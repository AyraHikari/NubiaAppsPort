.class public Lcn/nubia/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Lcn/nubia/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeskClock:[AllCapsTransformationMethod]"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcn/nubia/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 39
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcn/nubia/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 44
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "DeskClock:[AllCapsTransformationMethod]"

    const-string v1, "Caller did not enable length changes; not transforming text"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 49
    goto :goto_0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 55
    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0
    .param p1, "allowLengthChanges"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcn/nubia/text/method/AllCapsTransformationMethod;->mEnabled:Z

    .line 60
    return-void
.end method