.class Lcn/nubia/gallery3d/app/AlbumSetPage$10;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/AlbumSetPage;->updateAppBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$10;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 862
    iget-object p1, p0, Lcn/nubia/gallery3d/app/AlbumSetPage$10;->this$0:Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/AlbumSetPage;->onBackPressed()V

    return-void
.end method
