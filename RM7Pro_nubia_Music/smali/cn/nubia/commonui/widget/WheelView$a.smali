.class Lcn/nubia/commonui/widget/WheelView$a;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/WheelView$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field b:C

.field c:Ljava/util/Formatter;

.field final d:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->a:Ljava/lang/StringBuilder;

    .line 693
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->d:[Ljava/lang/Object;

    .line 696
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 697
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView$a;->a(Ljava/util/Locale;)V

    .line 698
    return-void
.end method

.method private a(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/WheelView$a;->c(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->c:Ljava/util/Formatter;

    .line 702
    invoke-static {p1}, Lcn/nubia/commonui/widget/WheelView$a;->b(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->b:C

    .line 703
    return-void
.end method

.method private static b(Ljava/util/Locale;)C
    .locals 1

    .prologue
    .line 717
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method private c(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2

    .prologue
    .line 721
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/commonui/widget/WheelView$a;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 706
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 707
    iget-char v1, p0, Lcn/nubia/commonui/widget/WheelView$a;->b:C

    invoke-static {v0}, Lcn/nubia/commonui/widget/WheelView$a;->b(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 708
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/WheelView$a;->a(Ljava/util/Locale;)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->d:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 711
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/widget/WheelView$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 712
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->c:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Lcn/nubia/commonui/widget/WheelView$a;->d:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 713
    iget-object v0, p0, Lcn/nubia/commonui/widget/WheelView$a;->c:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
