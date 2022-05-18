.class public final Lcom/google/zxing/decoding/Intents$Scan;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/decoding/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scan"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"

.field public static final CHARACTER_SET:Ljava/lang/String; = "CHARACTER_SET"

.field public static final DATA_MATRIX_MODE:Ljava/lang/String; = "DATA_MATRIX_MODE"

.field public static final MODE:Ljava/lang/String; = "SCAN_MODE"

.field public static final ONE_D_MODE:Ljava/lang/String; = "ONE_D_MODE"

.field public static final PRODUCT_MODE:Ljava/lang/String; = "PRODUCT_MODE"

.field public static final QR_CODE_MODE:Ljava/lang/String; = "QR_CODE_MODE"

.field public static final RESULT:Ljava/lang/String; = "SCAN_RESULT"

.field public static final RESULT_FORMAT:Ljava/lang/String; = "SCAN_RESULT_FORMAT"

.field public static final SAVE_HISTORY:Ljava/lang/String; = "SAVE_HISTORY"

.field public static final SCAN_FORMATS:Ljava/lang/String; = "SCAN_FORMATS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method
