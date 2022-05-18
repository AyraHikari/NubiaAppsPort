.class Lcn/nubia/commonui/widget/NubiaMorePopup$2;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;
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

    .line 144
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$2;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$2;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    return-void
.end method
