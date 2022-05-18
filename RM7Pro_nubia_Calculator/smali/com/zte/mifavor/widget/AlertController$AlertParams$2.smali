.class Lcom/zte/mifavor/widget/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/AlertController$AlertParams;->createListView(Lcom/zte/mifavor/widget/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/zte/mifavor/widget/AlertController;

.field final synthetic val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p5, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    iput-object p6, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1210
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 1211
    iget-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p2, p2, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1212
    iget-object p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p2, p2, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    const p2, 0x1020014

    .line 1217
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1218
    iget p2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->val$listView:Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1220
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1219
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1225
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->this$0:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object p1, p1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;->val$dialog:Lcom/zte/mifavor/widget/AlertController;

    invoke-static {p0}, Lcom/zte/mifavor/widget/AlertController;->access$1200(Lcom/zte/mifavor/widget/AlertController;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
