.class public final Landroid/support/a/a$a;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static FontFamilyFont_font:I

.field public static FontFamilyFont_fontStyle:I

.field public static FontFamilyFont_fontWeight:I

.field public static FontFamily_fontProviderAuthority:I

.field public static FontFamily_fontProviderCerts:I

.field public static FontFamily_fontProviderFetchStrategy:I

.field public static FontFamily_fontProviderFetchTimeout:I

.field public static FontFamily_fontProviderPackage:I

.field public static FontFamily_fontProviderQuery:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/a/a$a;->FontFamily:[I

    .line 168
    sput v1, Landroid/support/a/a$a;->FontFamily_fontProviderAuthority:I

    .line 185
    sput v2, Landroid/support/a/a$a;->FontFamily_fontProviderCerts:I

    .line 211
    sput v3, Landroid/support/a/a$a;->FontFamily_fontProviderFetchStrategy:I

    .line 230
    sput v4, Landroid/support/a/a$a;->FontFamily_fontProviderFetchTimeout:I

    .line 242
    const/4 v0, 0x4

    sput v0, Landroid/support/a/a$a;->FontFamily_fontProviderPackage:I

    .line 254
    const/4 v0, 0x5

    sput v0, Landroid/support/a/a$a;->FontFamily_fontProviderQuery:I

    .line 271
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/a/a$a;->FontFamilyFont:[I

    .line 287
    sput v1, Landroid/support/a/a$a;->FontFamilyFont_font:I

    .line 307
    sput v2, Landroid/support/a/a$a;->FontFamilyFont_fontStyle:I

    .line 321
    sput v3, Landroid/support/a/a$a;->FontFamilyFont_fontWeight:I

    return-void

    .line 154
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 271
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
