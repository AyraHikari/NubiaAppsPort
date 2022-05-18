.class public final enum Landroid/support/v8/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v8/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum b:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum c:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum d:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum e:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum f:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum g:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum h:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum i:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum j:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum k:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum l:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum m:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum n:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum o:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum p:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum q:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum r:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum s:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum t:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum u:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum v:Landroid/support/v8/renderscript/Element$DataType;

.field public static final enum w:Landroid/support/v8/renderscript/Element$DataType;

.field private static final synthetic z:[Landroid/support/v8/renderscript/Element$DataType;


# instance fields
.field x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x4

    .line 131
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v9, v9, v9}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->a:Landroid/support/v8/renderscript/Element$DataType;

    .line 133
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "FLOAT_32"

    invoke-direct {v0, v1, v8, v6, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->b:Landroid/support/v8/renderscript/Element$DataType;

    .line 134
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "FLOAT_64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2, v7}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->c:Landroid/support/v8/renderscript/Element$DataType;

    .line 135
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "SIGNED_8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->d:Landroid/support/v8/renderscript/Element$DataType;

    .line 136
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "SIGNED_16"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->e:Landroid/support/v8/renderscript/Element$DataType;

    .line 137
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "SIGNED_32"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->f:Landroid/support/v8/renderscript/Element$DataType;

    .line 138
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "SIGNED_64"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->g:Landroid/support/v8/renderscript/Element$DataType;

    .line 139
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_8"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v7, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    .line 140
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_16"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->i:Landroid/support/v8/renderscript/Element$DataType;

    .line 141
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_32"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->j:Landroid/support/v8/renderscript/Element$DataType;

    .line 142
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_64"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->k:Landroid/support/v8/renderscript/Element$DataType;

    .line 144
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "BOOLEAN"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->l:Landroid/support/v8/renderscript/Element$DataType;

    .line 146
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_5_6_5"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->m:Landroid/support/v8/renderscript/Element$DataType;

    .line 147
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_5_5_5_1"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->n:Landroid/support/v8/renderscript/Element$DataType;

    .line 148
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "UNSIGNED_4_4_4_4"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->o:Landroid/support/v8/renderscript/Element$DataType;

    .line 150
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "MATRIX_4X4"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const/16 v4, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->p:Landroid/support/v8/renderscript/Element$DataType;

    .line 151
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "MATRIX_3X3"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const/16 v4, 0x24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->q:Landroid/support/v8/renderscript/Element$DataType;

    .line 152
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "MATRIX_2X2"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->r:Landroid/support/v8/renderscript/Element$DataType;

    .line 154
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "RS_ELEMENT"

    const/16 v2, 0x12

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->s:Landroid/support/v8/renderscript/Element$DataType;

    .line 155
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "RS_TYPE"

    const/16 v2, 0x13

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->t:Landroid/support/v8/renderscript/Element$DataType;

    .line 156
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "RS_ALLOCATION"

    const/16 v2, 0x14

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->u:Landroid/support/v8/renderscript/Element$DataType;

    .line 157
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "RS_SAMPLER"

    const/16 v2, 0x15

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->v:Landroid/support/v8/renderscript/Element$DataType;

    .line 158
    new-instance v0, Landroid/support/v8/renderscript/Element$DataType;

    const-string v1, "RS_SCRIPT"

    const/16 v2, 0x16

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/support/v8/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->w:Landroid/support/v8/renderscript/Element$DataType;

    .line 130
    const/16 v0, 0x17

    new-array v0, v0, [Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->a:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v9

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->b:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->c:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->d:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->e:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->f:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->g:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->h:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->i:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->j:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->k:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->l:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->m:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->n:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->o:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->p:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->q:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->r:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->s:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->t:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->u:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->v:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->w:Landroid/support/v8/renderscript/Element$DataType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v8/renderscript/Element$DataType;->z:[Landroid/support/v8/renderscript/Element$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Landroid/support/v8/renderscript/Element$DataType;->x:I

    .line 164
    iput p4, p0, Landroid/support/v8/renderscript/Element$DataType;->y:I

    .line 165
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 130
    const-class v0, Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method

.method public static values()[Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->z:[Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/support/v8/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method
