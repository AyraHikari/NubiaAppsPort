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
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$8;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$8;->val$popup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 637
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$8;->val$popup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
