.class public Landroid/support/v7/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PopupMenu$OnDismissListener;,
        Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

.field mOnDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

.field final mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    .line 83
    sget v4, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 8

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 108
    new-instance v2, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v2, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 109
    new-instance v0, Landroid/support/v7/widget/PopupMenu$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/PopupMenu$1;-><init>(Landroid/support/v7/widget/PopupMenu;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 123
    new-instance v7, Landroid/support/v7/view/menu/MenuPopupHelper;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v7, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    .line 124
    invoke-virtual {v7, p3}, Landroid/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 125
    new-instance p1, Landroid/support/v7/widget/PopupMenu$2;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/PopupMenu$2;-><init>(Landroid/support/v7/widget/PopupMenu;)V

    invoke-virtual {v7, p1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .locals 2

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/support/v7/widget/PopupMenu$3;

    iget-object v1, p0, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/PopupMenu$3;-><init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->getGravity()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 219
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getMenuListView()Landroid/widget/ListView;
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public inflate(I)V
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuPopupHelper;->setGravity(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu;->mOnDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    return-void
.end method
