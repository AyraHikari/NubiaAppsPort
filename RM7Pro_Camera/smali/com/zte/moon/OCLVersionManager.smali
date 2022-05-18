.class public Lcom/zte/moon/OCLVersionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cachePath:Ljava/lang/String;

.field public srcName:Ljava/lang/String;

.field public systemVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "moon.bin"

    .line 11
    iput-object v0, p0, Lcom/zte/moon/OCLVersionManager;->srcName:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/zte/moon/OCLVersionManager;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/moon/OCLVersionManager;->systemVersion:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/moon_cache.bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/moon/OCLVersionManager;->cachePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method
