.class public final enum Lu/aly/bf$e;
.super Ljava/lang/Enum;
.source "Response.java"

# interfaces
.implements Lu/aly/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/bf$e;",
        ">;",
        "Lu/aly/bw;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bf$e;

.field public static final enum b:Lu/aly/bf$e;

.field public static final enum c:Lu/aly/bf$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bf$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lu/aly/bf$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 50
    new-instance v0, Lu/aly/bf$e;

    const-string v1, "RESP_CODE"

    const-string v2, "resp_code"

    invoke-direct {v0, v1, v5, v3, v2}, Lu/aly/bf$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    new-instance v0, Lu/aly/bf$e;

    const-string v1, "MSG"

    const-string v2, "msg"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bf$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    new-instance v0, Lu/aly/bf$e;

    const-string v1, "IMPRINT"

    const-string v2, "imprint"

    invoke-direct {v0, v1, v4, v6, v2}, Lu/aly/bf$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    .line 49
    new-array v0, v6, [Lu/aly/bf$e;

    sget-object v1, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bf$e;->g:[Lu/aly/bf$e;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bf$e;->d:Ljava/util/Map;

    .line 55
    const-class v0, Lu/aly/bf$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bf$e;

    .line 56
    sget-object v2, Lu/aly/bf$e;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lu/aly/bf$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-short p3, p0, Lu/aly/bf$e;->e:S

    .line 101
    iput-object p4, p0, Lu/aly/bf$e;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static a(I)Lu/aly/bf$e;
    .locals 1

    .prologue
    .line 65
    packed-switch p0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    sget-object v0, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    goto :goto_0

    .line 69
    :pswitch_1
    sget-object v0, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object v0, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bf$e;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lu/aly/bf$e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bf$e;

    return-object v0
.end method

.method public static b(I)Lu/aly/bf$e;
    .locals 3

    .prologue
    .line 82
    invoke-static {p0}, Lu/aly/bf$e;->a(I)Lu/aly/bf$e;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bf$e;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lu/aly/bf$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bf$e;

    return-object v0
.end method

.method public static values()[Lu/aly/bf$e;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lu/aly/bf$e;->g:[Lu/aly/bf$e;

    invoke-virtual {v0}, [Lu/aly/bf$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bf$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 105
    iget-short v0, p0, Lu/aly/bf$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lu/aly/bf$e;->f:Ljava/lang/String;

    return-object v0
.end method
