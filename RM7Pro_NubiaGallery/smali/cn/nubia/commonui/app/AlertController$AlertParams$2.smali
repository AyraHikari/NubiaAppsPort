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
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcn/nubia/commonui/app/AlertController;

.field final synthetic val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/commonui/app/AlertController$RecycleListView;Lcn/nubia/commonui/app/AlertController;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iput-object p5, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    iput-object p6, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->val$dialog:Lcn/nubia/commonui/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1185
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    .line 1186
    iget-object p3, p1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1187
    iget-object p1, p1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const p2, 0x7f090187

    .line 1192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1193
    iget p2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->val$listView:Lcn/nubia/commonui/app/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1195
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1194
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcn/nubia/commonui/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1200
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->this$0:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object p1, p1, Lcn/nubia/commonui/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcn/nubia/commonui/app/AlertController$AlertParams$2;->val$dialog:Lcn/nubia/commonui/app/AlertController;

    invoke-static {p2}, Lcn/nubia/commonui/app/AlertController;->access$1200(Lcn/nubia/commonui/app/AlertController;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
