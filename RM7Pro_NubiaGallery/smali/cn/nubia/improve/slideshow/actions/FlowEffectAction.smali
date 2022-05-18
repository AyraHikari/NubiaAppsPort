.class public Lcn/nubia/improve/slideshow/actions/FlowEffectAction;
.super Lcn/nubia/improve/slideshow/actions/EffectAction;
.source "FlowEffectAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/slideshow/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "Flow"

    .line 13
    iput-object p1, p0, Lcn/nubia/improve/slideshow/actions/FlowEffectAction;->mEffectType:Ljava/lang/String;

    return-void
.end method
