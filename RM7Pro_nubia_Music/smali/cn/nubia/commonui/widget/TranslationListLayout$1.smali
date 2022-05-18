.class Lcn/nubia/commonui/widget/TranslationListLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/TranslationListLayout;->createToBottomAnimator(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/TranslationListLayout;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/TranslationListLayout;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcn/nubia/commonui/widget/TranslationListLayout$1;->a:Lcn/nubia/commonui/widget/TranslationListLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 442
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout$1;->a:Lcn/nubia/commonui/widget/TranslationListLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/TranslationListLayout$1;->a:Lcn/nubia/commonui/widget/TranslationListLayout;

    invoke-static {v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$100(Lcn/nubia/commonui/widget/TranslationListLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$002(Lcn/nubia/commonui/widget/TranslationListLayout;F)F

    .line 443
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout$1;->a:Lcn/nubia/commonui/widget/TranslationListLayout;

    invoke-static {v0, v2}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$202(Lcn/nubia/commonui/widget/TranslationListLayout;I)I

    .line 444
    invoke-static {v2}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$302(Z)Z

    .line 445
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout$1;->a:Lcn/nubia/commonui/widget/TranslationListLayout;

    invoke-static {v0, v2}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$402(Lcn/nubia/commonui/widget/TranslationListLayout;I)I

    .line 446
    return-void
.end method
