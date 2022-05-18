.class public Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exampleNumber_:Ljava/lang/String;

.field private hasExampleNumber:Z

.field private hasNationalNumberPattern:Z

.field private hasPossibleNumberPattern:Z

.field private nationalNumberPattern_:Ljava/lang/String;

.field private possibleNumberPattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static newBuilder()Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public exactlySameAs(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2
    .param p1, "other"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExampleNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumberPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public getPossibleNumberPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasExampleNumber()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    return v0
.end method

.method public hasNationalNumberPattern()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    return v0
.end method

.method public hasPossibleNumberPattern()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    return v0
.end method

.method public mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "other"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 241
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 250
    :cond_2
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 281
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 285
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 288
    :cond_2
    return-void
.end method

.method public setExampleNumber(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 236
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public setNationalNumberPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 214
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setPossibleNumberPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    .line 225
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 261
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 266
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 270
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 271
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 274
    :cond_2
    return-void
.end method
