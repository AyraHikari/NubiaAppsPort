.class public Lnet/sourceforge/pinyin4j/format/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnet/sourceforge/pinyin4j/format/d;

.field public static final b:Lnet/sourceforge/pinyin4j/format/d;

.field public static final c:Lnet/sourceforge/pinyin4j/format/d;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/format/d;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/d;->a:Lnet/sourceforge/pinyin4j/format/d;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/d;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/d;->b:Lnet/sourceforge/pinyin4j/format/d;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/d;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/d;->c:Lnet/sourceforge/pinyin4j/format/d;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/d;->d:Ljava/lang/String;

    return-void
.end method
