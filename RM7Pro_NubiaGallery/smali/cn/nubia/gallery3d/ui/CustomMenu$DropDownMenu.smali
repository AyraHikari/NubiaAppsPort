.class public Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/CustomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropDownMenu"
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    .line 50
    new-instance p2, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-direct {p2, p1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 51
    invoke-virtual {p2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    .line 52
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-virtual {p1, p3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 53
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1, p4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 54
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    new-instance p2, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu$1;

    invoke-direct {p2, p0}, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu$1;-><init>(Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;)Landroid/widget/PopupMenu;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p0
.end method


# virtual methods
.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
