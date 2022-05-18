.class public Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final INCOMING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

.field public static final OUTGOING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_INCOMING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;


# instance fields
.field public backgroundAlphaFrom:F

.field public backgroundAlphaTo:F

.field public backgroundScaleFrom:F

.field public backgroundScaleTo:F

.field public contentAlphaFrom:F

.field public contentAlphaTo:F

.field public contentScaleFrom:F

.field public contentScaleTo:F

.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field public overlayAlphaFrom:F

.field public overlayAlphaTo:F

.field public overlayScaleFrom:F

.field public overlayScaleTo:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 57
    iput v1, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    const/4 v2, 0x0

    .line 58
    iput v2, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 60
    iput v2, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 61
    iput v1, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 62
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 63
    iput v1, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 64
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 66
    new-instance v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 67
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 68
    iput v2, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 69
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 70
    iput v1, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 71
    iput v2, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 72
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 73
    iput v1, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 74
    iput v3, v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 76
    sput-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x258

    .line 40
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 42
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 43
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 44
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    iput v1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 46
    iput v1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 47
    iput v1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 48
    iput v1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 49
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 50
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 51
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 52
    iput v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 53
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;
    .locals 0

    .line 32
    invoke-static {p0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->specForTransition(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object p0

    return-object p0
.end method

.method private static specForTransition(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;
    .locals 1

    .line 80
    sget-object v0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$cn$nubia$gallery3d$anim$StateTransitionAnimation$Transition:[I

    invoke-virtual {p0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    sget-object p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 84
    :cond_1
    sget-object p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    return-object p0

    .line 82
    :cond_2
    sget-object p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    return-object p0
.end method
