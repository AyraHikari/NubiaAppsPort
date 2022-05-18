.class Lcn/nubia/music/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcn/nubia/music/app/scan/MusicScanManager$ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity$3;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity$3;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity$3;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcn/nubia/music/MainActivity$3$1;->a:Lcn/nubia/music/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scanComplete()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/music/MainActivity$3$1;->a:Lcn/nubia/music/MainActivity$3;

    iget-boolean v0, v0, Lcn/nubia/music/MainActivity$3;->a:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcn/nubia/music/MainActivity$3$1;->a:Lcn/nubia/music/MainActivity$3;

    iget-object v0, v0, Lcn/nubia/music/MainActivity$3;->b:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$500(Lcn/nubia/music/MainActivity;)V

    .line 164
    :cond_0
    return-void
.end method
