.class Lcn/nubia/commonui/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/app/AlertController$AlertParams;->createListView(Lcn/nubia/commonui/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

.field final synthetic val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/commonui/app/AlertController$RecycleListView;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p6, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1169
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1170
    iget-object p3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object p3, p3, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    .line 1171
    iget-object p3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object p3, p3, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 1173
    iget-object p3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
