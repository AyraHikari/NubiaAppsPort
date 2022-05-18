.class Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;
.super Ljava/lang/Object;
.source "NubiaMorePopupSub.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/NubiaMorePopupSub;->setItems([Ljava/lang/CharSequence;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

.field final synthetic val$listener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/NubiaMorePopupSub;Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    iput-object p2, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;->val$listener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;->val$listener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaMorePopupSub$1;->this$0:Lcn/nubia/commonui/widget/NubiaMorePopupSub;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub;->access$000(Lcn/nubia/commonui/widget/NubiaMorePopupSub;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/NubiaMorePopupSub$MenuData;->getmItemId()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;->onClick(I)V

    return-void
.end method
