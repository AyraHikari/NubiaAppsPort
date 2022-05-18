.class public Lcom/zte/mifavor/widget/CheckBoxZTE;
.super Landroid/widget/CheckBox;
.source "CheckBoxZTE.java"


# static fields
.field private static animationOff:Landroid/view/animation/Animation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static animationOn:Landroid/view/animation/Animation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method private initAnim(Landroid/content/Context;)V
    .locals 1

    .line 57
    sget-object p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOn:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 58
    sget p0, Lcom/zte/extres/R$anim;->anim_checkbox_to_on:I

    invoke-static {p1, p0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    sput-object p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOn:Landroid/view/animation/Animation;

    .line 59
    sget-object p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 62
    :cond_0
    sget-object p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOff:Landroid/view/animation/Animation;

    if-nez p0, :cond_1

    .line 63
    sget p0, Lcom/zte/extres/R$anim;->anim_checkbox_to_off:I

    invoke-static {p1, p0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    sput-object p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOff:Landroid/view/animation/Animation;

    .line 64
    sget-object p0, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOff:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityEx(I)V
    .locals 1

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 82
    sget-object p1, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOn:Landroid/view/animation/Animation;

    if-eqz p1, :cond_2

    .line 83
    sget-object p1, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOn:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 84
    sget-object p1, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOn:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOff:Landroid/view/animation/Animation;

    if-eqz p1, :cond_2

    .line 88
    sget-object p1, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOff:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 89
    sget-object p1, Lcom/zte/mifavor/widget/CheckBoxZTE;->animationOff:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method
