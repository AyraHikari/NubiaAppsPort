.class Lcn/nubia/gallery3d/app/AlbumPage$6;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumPage;->SetAsPrivate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumPage;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$6;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "AlbumPage"

    const-string p2, "cancel"

    .line 866
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumPage$6;->this$0:Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/AlbumPage;->access$3700(Lcn/nubia/gallery3d/app/AlbumPage;)V

    return-void
.end method
