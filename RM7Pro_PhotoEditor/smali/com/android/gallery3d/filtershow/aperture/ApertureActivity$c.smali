.class Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    check-cast p2, Lcom/android/gallery3d/filtershow/aperture/ApertureService$i;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService$i;->a()Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->F(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->a(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->e(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->j(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureService;->H(Landroid/net/Uri;I)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity$c;->a:Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;->b(Lcom/android/gallery3d/filtershow/aperture/ApertureActivity;Lcom/android/gallery3d/filtershow/aperture/ApertureService;)Lcom/android/gallery3d/filtershow/aperture/ApertureService;

    return-void
.end method
