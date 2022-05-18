.class Lcn/nubia/commonui/widget/NubiaSwitch$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaSwitch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaSwitch;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaSwitch;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSwitch$1;->a:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSwitch$1;->a:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSwitch$1;->a:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->access$000(Lcn/nubia/commonui/widget/NubiaSwitch;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    return-void
.end method
