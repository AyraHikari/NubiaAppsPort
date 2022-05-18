.class Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/PropertyBoxParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FourCcToBox"
.end annotation


# instance fields
.field private clazzName:Ljava/lang/String;

.field private param:[Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field final synthetic this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

.field private type:Ljava/lang/String;

.field private userType:[B


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/PropertyBoxParserImpl;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->parent:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    return-void
.end method

.method static synthetic access$000(Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getClazzName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->param:[Ljava/lang/String;

    return-object v0
.end method

.method public invoke()Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->parent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-uuid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    invoke-static {v3}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->userType:[B

    invoke-static {v4}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "we have a userType but no uuid box type. Something\'s wrong"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->parent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    iget-object v1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v0, v0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_6

    .line 10
    iget-object v1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->this$0:Lcom/coremedia/iso/PropertyBoxParserImpl;

    iget-object v1, v1, Lcom/coremedia/iso/PropertyBoxParserImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->param:[Ljava/lang/String;

    return-object p0

    .line 14
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot work with that constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No box object found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
