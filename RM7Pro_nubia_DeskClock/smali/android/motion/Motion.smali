.class public final Landroid/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"


# static fields
.field public static final MOTION_DALAY_FASTEST:I = 0x0

.field public static final MOTION_DALAY_GAME:I = 0x1

.field public static final MOTION_DALAY_NORMAL:I = 0x3

.field public static final MOTION_DALAY_UI:I = 0x2

.field public static final NAME_LEANSCAN:Ljava/lang/String; = ""

.field public static final NAME_PICKANSWER:Ljava/lang/String; = ""

.field public static final NAME_PICKUP:Ljava/lang/String; = ""

.field public static final NAME_POCKETMOD:Ljava/lang/String; = ""

.field public static final NAME_RLSHAKE:Ljava/lang/String; = ""

.field public static final NAME_SHAKE:Ljava/lang/String; = ""

.field public static final NAME_TURNOVER:Ljava/lang/String; = ""

.field public static final TYPE_LEANSCAN:I = 0x4

.field public static final TYPE_PALMREJECTION:I = 0x7

.field public static final TYPE_PICKANSWER:I = 0x3

.field public static final TYPE_PICKUP:I = 0x2

.field public static final TYPE_POCKETMOD:I = 0x5

.field public static final TYPE_RLSHAKE:I = 0x6

.field public static final TYPE_SHAKE:I = 0x1

.field public static final TYPE_TURNOVER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMotionNameByType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getMotionTypeByName(Ljava/lang/String;)I
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, -0x1

    .line 56
    .local v0, "type":I
    return v0
.end method
