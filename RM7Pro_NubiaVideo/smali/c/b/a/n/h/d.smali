.class public Lc/b/a/n/h/d;
.super Lc/b/a/n/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/h/a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b/a/n/h/a;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1}, Lc/b/a/n/h/d;->e(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method protected bridge synthetic d(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/b/a/n/h/d;->f(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void
.end method

.method protected f(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
