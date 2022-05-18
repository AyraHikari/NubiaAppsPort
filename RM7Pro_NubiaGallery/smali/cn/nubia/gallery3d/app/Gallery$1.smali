.class Lcn/nubia/gallery3d/app/Gallery$1;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/Gallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/Gallery;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/gallery3d/app/Gallery$1;->this$0:Lcn/nubia/gallery3d/app/Gallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
