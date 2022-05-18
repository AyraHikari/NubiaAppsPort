.class public Lcn/nubia/gallery3d/ui/CustomMenu$NoDropDownMenu;
.super Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;
.source "CustomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/CustomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoDropDownMenu"
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;-><init>()V

    .line 75
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/CustomMenu$NoDropDownMenu;->mButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public findItem(I)Landroid/view/MenuItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/CustomMenu$NoDropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
