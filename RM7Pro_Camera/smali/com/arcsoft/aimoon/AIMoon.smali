.class public Lcom/arcsoft/aimoon/AIMoon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;,
        Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;,
        Lcom/arcsoft/aimoon/AIMoon$MPBASE_Version;,
        Lcom/arcsoft/aimoon/AIMoon$MRECT;
    }
.end annotation


# static fields
.field public static final ASVL_PAF_NV21:I = 0x802

.field public static final MAX_MOON_NUM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mpbase"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "arcsoft_ai_moon"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "native_arcsoft_aimoon"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native detect(JLcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;)I
.end method

.method public static native init()J
.end method

.method public static native process(JLcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;Lcom/arcsoft/aimoon/AIMoon$ARC_AIM_MOON_DETECT_RES;Lcom/arcsoft/aimoon/AIMoon$ASVLOFFSCREEN;)I
.end method

.method public static native uninit(J)I
.end method
