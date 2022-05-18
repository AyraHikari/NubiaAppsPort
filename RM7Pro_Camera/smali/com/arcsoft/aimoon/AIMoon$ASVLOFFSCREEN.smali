.class public Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/aimoon/AIMoon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASVLOFFSCREEN"
.end annotation


# instance fields
.field public i32Height:I

.field public i32Width:I

.field public ppu8Plane:[B

.field public u32PixelArrayFormat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
