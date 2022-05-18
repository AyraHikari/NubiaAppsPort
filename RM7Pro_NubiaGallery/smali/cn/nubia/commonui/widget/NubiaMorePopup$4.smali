.class Lcn/nubia/commonui/widget/NubiaMorePopup$4;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$4;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$4;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 213
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$4;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$000(Lcn/nubia/commonui/widget/NubiaMorePopup;)V

    const/4 v0, 0x1

    return v0
.end method
