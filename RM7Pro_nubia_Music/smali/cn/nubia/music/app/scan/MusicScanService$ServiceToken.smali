.class public Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;
.super Ljava/lang/Object;
.source "MusicScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceToken"
.end annotation


# instance fields
.field mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 468
    return-void
.end method
