.class public Lcn/nubia/gallery3d/ui/CustomMenu;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/CustomMenu$NoDropDownMenu;,
        Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterMenu"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu;->mContext:Landroid/content/Context;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu;->mMenus:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addDropDownMenu(Landroid/widget/Button;I)Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;
    .locals 2

    .line 98
    new-instance v0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/CustomMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p0}, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 99
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu;->mMenus:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu;->mListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method
