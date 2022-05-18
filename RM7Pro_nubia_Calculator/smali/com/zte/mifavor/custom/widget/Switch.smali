.class public Lcom/zte/mifavor/custom/widget/Switch;
.super Ljava/lang/Object;
.source "Switch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchMiFavor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateThumbToCheckedState_setPositionAnimator([Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 18
    aget-object v0, p0, v0

    check-cast v0, Landroid/content/Context;

    .line 19
    invoke-static {v0}, Lcom/zte/mifavor/custom/Config;->isMifavorTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 23
    aget-object p0, p0, v0

    check-cast p0, Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x96

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3e19999a    # 0.15f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    return-void
.end method
