.class public abstract Lcn/nubia/improve/slideshow/actions/EffectAction;
.super Landroid/widget/LinearLayout;
.source "EffectAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/actions/EffectAction$Listener;
    }
.end annotation


# instance fields
.field protected mEffectType:Ljava/lang/String;

.field private mlistener:Lcn/nubia/improve/slideshow/actions/EffectAction$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doCreateEffect()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/improve/slideshow/actions/EffectAction;->mEffectType:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/improve/slideshow/effects/FilteringFactroy;->CreateFiltering(Ljava/lang/String;)Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcn/nubia/improve/slideshow/actions/EffectAction;->mlistener:Lcn/nubia/improve/slideshow/actions/EffectAction$Listener;

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1, v0}, Lcn/nubia/improve/slideshow/actions/EffectAction$Listener;->onChangeEffect(Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/improve/slideshow/actions/EffectAction;->mEffectType:Ljava/lang/String;

    return-object v0
.end method
