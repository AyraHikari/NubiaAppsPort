.class public Landroid/support/v4/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private final mItalic:Z

.field private final mResultCode:I

.field private final mTtcIndex:I

.field private final mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 294
    iput p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    .line 295
    iput p3, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 296
    iput-boolean p4, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 297
    iput p5, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 298
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mResultCode:I

    return v0
.end method

.method public getTtcIndex()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mItalic:Z

    return v0
.end method
