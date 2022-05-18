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
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/app/AlertController$RecycleListView;

.field final synthetic b:Lcn/nubia/commonui/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcn/nubia/commonui/app/AlertController$RecycleListView;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->b:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p6, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->a:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 980
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->b:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    .line 982
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->b:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    .line 983
    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$1;->a:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 987
    :cond_0
    return-object v0
.end method
