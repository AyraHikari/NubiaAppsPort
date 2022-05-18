.class public Lnet/sourceforge/pinyin4j/format/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnet/sourceforge/pinyin4j/format/a;

.field public static final b:Lnet/sourceforge/pinyin4j/format/a;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sourceforge/pinyin4j/format/a;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/a;->a:Lnet/sourceforge/pinyin4j/format/a;

    new-instance v0, Lnet/sourceforge/pinyin4j/format/a;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, Lnet/sourceforge/pinyin4j/format/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sourceforge/pinyin4j/format/a;->b:Lnet/sourceforge/pinyin4j/format/a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sourceforge/pinyin4j/format/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/a;->c:Ljava/lang/String;

    return-void
.end method
