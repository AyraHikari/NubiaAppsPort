.class public Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
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
    name = "NumberFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasNationalPrefixOptionalWhenFormatting:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private nationalPrefixOptionalWhenFormatting_:Z

.field private pattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static newBuilder()Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    invoke-direct {v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addLeadingDigitsPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object p0
.end method

.method public clearNationalPrefixFormattingRule()Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingDigitsPattern(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixFormattingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDomesticCarrierCodeFormattingRule()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    return v0
.end method

.method public hasNationalPrefixFormattingRule()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    return v0
.end method

.method public hasNationalPrefixOptionalWhenFormatting()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    return v0
.end method

.method public hasPattern()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    return v0
.end method

.method public isNationalPrefixOptionalWhenFormatting()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    return v0
.end method

.method public leadingDigitPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    return-object v0
.end method

.method public leadingDigitsPatternSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 3
    .param p1, "other"    # Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    .line 139
    .local v1, "leadingDigitsPatternSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 140
    invoke-virtual {p1, v0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->addLeadingDigitsPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 148
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 149
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 176
    .local v1, "leadingDigitsPatternSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 177
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 182
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 185
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 186
    return-void
.end method

.method public setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    .line 127
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    .line 68
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setNationalPrefixFormattingRule(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 96
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setNationalPrefixOptionalWhenFormatting(Z)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    .line 114
    iput-boolean p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 115
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    .line 57
    iput-object p1, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    .line 156
    .local v1, "leadingDigitsPatternSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 158
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 162
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 165
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 166
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 169
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/i18n/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 170
    return-void
.end method
