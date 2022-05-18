.class Lcn/nubia/commonui/widget/NubiaMorePopup$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$8;->b:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$8;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$8;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 667
    return-void
.end method
