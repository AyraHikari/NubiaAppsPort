.class public Lcn/nubia/improve/slideshow/actions/FadeOutEffectAction;
.super Lcn/nubia/improve/slideshow/actions/EffectAction;
.source "FadeOutEffectAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/slideshow/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "FadeOut"

    .line 12
    iput-object p1, p0, Lcn/nubia/improve/slideshow/actions/FadeOutEffectAction;->mEffectType:Ljava/lang/String;

    return-void
.end method
