.class Lcom/android/gallery3d/filtershow/FilterShowActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    check-cast p2, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$a;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$a;->a()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->k()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    return-void
.end method
