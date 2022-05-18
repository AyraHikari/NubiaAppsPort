.class public Lnet/sourceforge/pinyin4j/format/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnet/sourceforge/pinyin4j/format/c;

.field public static final b:Lnet/sourceforge/pinyin4j/format/c;

.field public static final c:Lnet/sourceforge/pinyin4j/format/c;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/format/c;

    const-string v1, "WITH_TONE_NUMBER"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/c;->a:Lnet/sourceforge/pinyin4j/format/c;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/c;

    const-string v1, "WITHOUT_TONE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/c;->b:Lnet/sourceforge/pinyin4j/format/c;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/c;

    const-string v1, "WITH_TONE_MARK"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/c;->c:Lnet/sourceforge/pinyin4j/format/c;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/c;->d:Ljava/lang/String;

    return-void
.end method
