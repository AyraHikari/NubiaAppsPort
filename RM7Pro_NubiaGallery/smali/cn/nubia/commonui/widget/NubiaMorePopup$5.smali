.class Lcn/nubia/commonui/widget/NubiaMorePopup$5;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopup;->createListView()V
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

    .line 269
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 273
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object p1, p1, Lcn/nubia/commonui/widget/NubiaMorePopup;->mItemEnabled:[Z

    aget-boolean p1, p1, p3

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$200(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;->onClick(I)V

    .line 275
    iget-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {p1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
