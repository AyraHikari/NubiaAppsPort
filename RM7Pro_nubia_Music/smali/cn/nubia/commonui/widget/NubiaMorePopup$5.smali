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
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$300(Lcn/nubia/commonui/widget/NubiaMorePopup;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$400(Lcn/nubia/commonui/widget/NubiaMorePopup;)Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;->onClick(I)V

    .line 310
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopup$5;->a:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->access$100(Lcn/nubia/commonui/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 312
    :cond_0
    return-void
.end method
