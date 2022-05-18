.class public Lcn/nubia/camera/bb/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/net/Uri;

.field public l:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method
