.class Lcn/nubia/commonui/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/app/AlertController$AlertParams;->createListView(Lcn/nubia/commonui/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/app/AlertController$RecycleListView;

.field final synthetic b:Lcn/nubia/commonui/app/AlertController;

.field final synthetic c:Lcn/nubia/commonui/app/AlertController$AlertParams;

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V
    .locals 2

    .prologue
    .line 991
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->c:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->a:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    iput-object p6, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->b:Lcn/nubia/commonui/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 996
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 997
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->c:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->d:I

    .line 998
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->c:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, v1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->e:I

    .line 999
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1003
    sget v0, Lcn/nubia/commonui/R$id;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1004
    iget v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->d:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->a:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->e:I

    .line 1006
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1005
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1007
    return-void

    .line 1006
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->c:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->b:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->access$1000(Lcn/nubia/commonui/app/AlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
