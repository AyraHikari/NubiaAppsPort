.class Lcn/nubia/touping/Dialog/HdmiNodesDialog$1;
.super Ljava/lang/Object;
.source "HdmiNodesDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Dialog/HdmiNodesDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/nubia/touping/Utils/hdmi/HdmiNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Dialog/HdmiNodesDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/touping/Dialog/HdmiNodesDialog$1;->this$0:Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/touping/Utils/hdmi/HdmiNode;Lcn/nubia/touping/Utils/hdmi/HdmiNode;)I
    .locals 2
    .param p1, "node"    # Lcn/nubia/touping/Utils/hdmi/HdmiNode;
    .param p2, "t1"    # Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    .prologue
    .line 63
    iget v0, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v1, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    if-eq v0, v1, :cond_0

    .line 64
    iget v0, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    iget v1, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mHeightPixel:I

    sub-int/2addr v0, v1

    .line 75
    :goto_0
    return v0

    .line 66
    :cond_0
    iget v0, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v1, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    if-eq v0, v1, :cond_1

    .line 67
    iget v0, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    iget v1, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mWidthPixel:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 69
    :cond_1
    iget v0, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    iget v1, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    if-eq v0, v1, :cond_2

    .line 70
    iget v0, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    iget v1, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mFps:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 72
    :cond_2
    iget v0, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    iget v1, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    if-eq v0, v1, :cond_3

    .line 73
    iget v0, p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    iget v1, p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;->mMode:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 75
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    check-cast p2, Lcn/nubia/touping/Utils/hdmi/HdmiNode;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/touping/Dialog/HdmiNodesDialog$1;->compare(Lcn/nubia/touping/Utils/hdmi/HdmiNode;Lcn/nubia/touping/Utils/hdmi/HdmiNode;)I

    move-result v0

    return v0
.end method
