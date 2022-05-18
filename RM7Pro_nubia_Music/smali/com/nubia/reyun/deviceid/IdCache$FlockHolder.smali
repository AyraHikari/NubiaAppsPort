.class Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;
.super Ljava/lang/Object;
.source "IdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/deviceid/IdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlockHolder"
.end annotation


# instance fields
.field flock:Ljava/nio/channels/FileLock;

.field fos:Ljava/io/FileOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/nubia/reyun/deviceid/IdCache$FlockHolder;-><init>()V

    return-void
.end method
